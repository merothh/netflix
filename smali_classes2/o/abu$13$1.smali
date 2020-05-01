.class Lo/abu$13$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$13;->a(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abu$13;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/abu$13;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lo/abu$13$1;->a:Lo/abu$13;

    iput-object p2, p0, Lo/abu$13$1;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 992
    iget-object v0, p0, Lo/abu$13$1;->a:Lo/abu$13;

    iget-object v0, v0, Lo/abu$13;->a:Lo/abu;

    iget-object v1, p0, Lo/abu$13$1;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1}, Lo/abu;->e(Lo/abu;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
