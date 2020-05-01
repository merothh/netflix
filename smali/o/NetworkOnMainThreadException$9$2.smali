.class Lo/NetworkOnMainThreadException$9$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException$9;->a(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/NetworkOnMainThreadException$9;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException$9;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lo/NetworkOnMainThreadException$9$2;->a:Lo/NetworkOnMainThreadException$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 635
    iget-object v0, p0, Lo/NetworkOnMainThreadException$9$2;->a:Lo/NetworkOnMainThreadException$9;

    iget-object v0, v0, Lo/NetworkOnMainThreadException$9;->e:Lo/NetworkOnMainThreadException;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException;->h()V

    return-void
.end method
