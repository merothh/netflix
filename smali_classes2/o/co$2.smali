.class Lo/co$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lo/co;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lo/co$2;->b:Lo/co;

    iput-object p2, p0, Lo/co$2;->a:Ljava/util/List;

    iput-object p3, p0, Lo/co$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lo/co$2;->b:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$2;->a:Ljava/util/List;

    iget-object v2, p0, Lo/co$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method