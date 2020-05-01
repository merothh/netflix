.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$success:Z

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;->val$success:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;->val$success:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;->val$uuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$1300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    return-void
.end method
