package com.axonivy.ivy.angularwfdemo.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.call.SubProcessCall;
import ch.ivyteam.ivy.security.IUser;

import com.axonivy.ivy.angularwfdemo.rest.TaskCreatorService.TaskToCreate;

@Path("currentUser")
public class CurrentUserService {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response create(TaskToCreate taskToCreate) {
		IUser user = SubProcessCall.withPath("REST/currentUserService")
				.call()
				.get("user", IUser.class);
		
		if (user == null)
		{
			return Response.status(Status.FORBIDDEN).build();
		}
		Ivy.log().info("Got information for user " + user.getMemberName());

		return Response
				.status(Status.OK)
								.entity(new UserInfo(user))
								.build();
	}
	
	public static class UserInfo {
		public final String memberName;
		public final String emailAddress;
		public final String displayName;

		public UserInfo(IUser user) {
			this.emailAddress = user.getEMailAddress();
			this.memberName = user.getMemberName();
			this.displayName = user.getDisplayName();
		}
	}
}
