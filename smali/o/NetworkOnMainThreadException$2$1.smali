.class Lo/NetworkOnMainThreadException$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException$2;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/NetworkOnMainThreadException$2;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException$2;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lo/NetworkOnMainThreadException$2$1;->e:Lo/NetworkOnMainThreadException$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 605
    iget-object v0, p0, Lo/NetworkOnMainThreadException$2$1;->e:Lo/NetworkOnMainThreadException$2;

    iget-object v0, v0, Lo/NetworkOnMainThreadException$2;->e:Lo/NetworkOnMainThreadException;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/NetworkOnMainThreadException;->g(I)V

    return-void
.end method
