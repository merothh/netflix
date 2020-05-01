.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$reqUrl:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->val$uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->val$reqUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->val$uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;->val$reqUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$1400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
