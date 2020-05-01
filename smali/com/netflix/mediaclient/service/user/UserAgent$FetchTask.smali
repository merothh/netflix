.class abstract Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;->callback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-void
.end method


# virtual methods
.method protected getCallback()Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;->callback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-object v0
.end method
