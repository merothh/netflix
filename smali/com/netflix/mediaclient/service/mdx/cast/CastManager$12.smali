.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;->val$id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$1200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    return-void
.end method
