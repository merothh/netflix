.class public Lo/yp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/yp;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/yp;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;)V

    return-void
.end method
