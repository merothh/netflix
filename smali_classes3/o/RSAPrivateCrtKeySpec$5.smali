.class Lo/RSAPrivateCrtKeySpec$5;
.super Lo/SerializablePermission$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RSAPrivateCrtKeySpec;->e(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Lo/RSAPrivateCrtKeySpec;


# direct methods
.method constructor <init>(Lo/RSAPrivateCrtKeySpec;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lo/RSAPrivateCrtKeySpec$5;->c:Lo/RSAPrivateCrtKeySpec;

    iput-object p2, p0, Lo/RSAPrivateCrtKeySpec$5;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lo/RSAPrivateCrtKeySpec$5;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/SerializablePermission$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/SerializablePermission;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 376
    iget-object p4, p0, Lo/RSAPrivateCrtKeySpec$5;->a:Landroidx/fragment/app/Fragment;

    if-ne p2, p4, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Lo/SerializablePermission;->e(Lo/SerializablePermission$Activity;)V

    .line 378
    iget-object p1, p0, Lo/RSAPrivateCrtKeySpec$5;->c:Lo/RSAPrivateCrtKeySpec;

    iget-object p2, p0, Lo/RSAPrivateCrtKeySpec$5;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p2}, Lo/RSAPrivateCrtKeySpec;->d(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method
