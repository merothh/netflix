.class Lo/StatFs$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StatFs$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/StatFs$2;


# direct methods
.method constructor <init>(Lo/StatFs$2;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/StatFs$2$2;->a:Lo/StatFs$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 200
    iget-object v0, p0, Lo/StatFs$2$2;->a:Lo/StatFs$2;

    iget-object v0, v0, Lo/StatFs$2;->b:Lo/StatFs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/StatFs;->d(Lo/StatFs;Z)V

    return-void
.end method
