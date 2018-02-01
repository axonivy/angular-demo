package com.axonivy.ivy.angularwfdemo.rest;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriBuilder;

import ch.ivyteam.ivy.process.call.SubProcessCall;
import ch.ivyteam.ivy.workflow.ITask;

//TODO add permission check
@Path("createTask")
public class TaskCreatorService {

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public Response create(TaskToCreate taskToCreate) {
		ITask task = SubProcessCall.withPath("REST/createTask")
				.withParam("taskName", taskToCreate.taskName)
				.withParam("taskDescription", taskToCreate.getTaskDescription())
				.call()
				.get("createdTask", ITask.class);

		String appRelativeUri = "workflow/task/{id}";
		return Response
				.status(Status.CREATED)
				.location(
						UriBuilder
						.fromPath("{applicationName}/" + appRelativeUri)
								.build(task.getApplication().getName(), task.getId()))
								.entity(new TaskMeta(task))
								.build();
	}
	
	public static class TaskToCreate {
		private String taskName;
		private String taskDescription;

		public String getTaskName() {
			return taskName;
		}

		public String getTaskDescription() {
			return taskDescription;
		}
	}

	public static class TaskMeta {
		public final long id;
		public final String name;
		public final String description;
		public final String activator;

		public TaskMeta(ITask task) {
			this.id = task.getId();
			this.name = task.getName();
			this.description = task.getDescription();
			this.activator = task.getActivatorName();
		}
	}
}
