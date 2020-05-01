.class final Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/NetflixService$InitCallback;


# instance fields
.field private final flags:I

.field private final intent:Landroid/content/Intent;

.field private final startId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->intent:Landroid/content/Intent;

    iput p3, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->flags:I

    iput p4, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->startId:I

    return-void
.end method


# virtual methods
.method public onInitComplete()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->intent:Landroid/content/Intent;

    iget v2, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->flags:I

    iget v3, p0, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;->startId:I

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/NetflixService;->access$000(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V

    return-void
.end method
