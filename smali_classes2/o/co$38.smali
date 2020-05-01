.class Lo/co$38;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Lo/co;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/co$38;->c:Lo/co;

    iput-object p2, p0, Lo/co$38;->e:Ljava/util/List;

    iput-object p3, p0, Lo/co$38;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    invoke-static {}, Lo/aeB;->a()Z

    .line 123
    iget-object v0, p0, Lo/co$38;->c:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$38;->e:Ljava/util/List;

    iget-object v2, p0, Lo/co$38;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
