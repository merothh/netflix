.class Lo/co$25;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Lcom/netflix/model/leafs/PrePlayExperiences;

.field final synthetic e:Lo/co;


# direct methods
.method constructor <init>(Lo/co;Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lo/co$25;->e:Lo/co;

    iput-object p2, p0, Lo/co$25;->c:Lcom/netflix/model/leafs/PrePlayExperiences;

    iput-object p3, p0, Lo/co$25;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 389
    iget-object v0, p0, Lo/co$25;->e:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$25;->c:Lcom/netflix/model/leafs/PrePlayExperiences;

    iget-object v2, p0, Lo/co$25;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
