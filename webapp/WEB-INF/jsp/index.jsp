<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ include file="/WEB-INF/jsp/include/tags.jspf" %>

<div class="home-content">
	<section class="qna-list">
		<h1>최근화제</h1>
		<ul class="list">
		<c:forEach items="${questions.content}" var="each">
			<li>
				<div class="wrap">
					<div class="main">
						<strong class="subject">
							<a href="/questions/${each.questionId}">${sf:h(each.title)}</a>
						</strong>
						<div class="tags">
							<ul>
							<c:forEach items="${each.denormalizedTags}" var="tag">
								<li>
									<a href="/questions/tagged/${tag}" class="tag">${tag}</a>
								</li>
							</c:forEach>
							</ul>
						</div>
					</div>
					<div class="sub">
						<div class="reply">
							<i class="icon-reply" title="댓글"></i>
							<span class="point">${each.answerCount}</span>
						</div>
						<div class="auth-info">
							<c:choose>
								<c:when test="${each.answerCount == 0}">
								작성
								</c:when>
								<c:otherwise>
								최근답변
								</c:otherwise>
							</c:choose>
							<span class="time">
								<fmt:formatDate value="${each.createdDate}" pattern="yyyy-MM-dd HH:mm" />
							</span>
							<a href="${each.writer.profileUrl}" class="author">${each.writer.userId}</a>
						</div>
					</div>
				</div>
			</li>
		</c:forEach>
		</ul>
		<nav class="pager">
			<ul>
				<sl:pager page="${questions}" prefixUri="/questions"/>
			</ul>
		</nav>
	</section>
	<slipp:side-tags tags="${tags}"/>
	<section class="span4">
		<h1>SLiPP 소식</h1>
		<div class="forumList">
		<c:forEach items="${pages}" var="page">
			<div class="nickArea">
				<p class="regDate">${page.creationDate}</p>
			</div>
			<div class="cont">
				<strong class="subject"><a href="/wiki/pages/viewpage.action?pageId=${page.pageId}">${page.title}</a></strong>
				<div>${page.shortContents}</div>
			</div>
		</c:forEach>
		</div>
		<div class="forumTop">
			<div class="rss">
				<a href="http://feeds.feedburner.com/slipp"><img src="http://feeds.feedburner.com/~fc/slipp?bg=99CCFF&amp;fg=444444&amp;anim=0" height="26" width="88" style="border:0" alt="" /></a>
			</div>
		</div>
	</section>
</div>
