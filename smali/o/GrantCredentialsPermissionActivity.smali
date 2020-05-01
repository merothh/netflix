.class public Lo/GrantCredentialsPermissionActivity;
.super Lo/ActivityView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ActivityView<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lo/ActivityView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActivityView<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lo/DESedeKeySpec;Lo/ActivityView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DESedeKeySpec;",
            "Lo/ActivityView<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 17
    iget-object v2, p2, Lo/ActivityView;->d:Ljava/lang/Object;

    iget-object v3, p2, Lo/ActivityView;->b:Ljava/lang/Object;

    iget-object v4, p2, Lo/ActivityView;->c:Landroid/view/animation/Interpolator;

    iget v5, p2, Lo/ActivityView;->a:F

    iget-object v6, p2, Lo/ActivityView;->e:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lo/ActivityView;-><init>(Lo/DESedeKeySpec;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 19
    iput-object p2, p0, Lo/GrantCredentialsPermissionActivity;->i:Lo/ActivityView;

    .line 20
    invoke-virtual {p0}, Lo/GrantCredentialsPermissionActivity;->b()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 26
    iget-object v0, p0, Lo/GrantCredentialsPermissionActivity;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GrantCredentialsPermissionActivity;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GrantCredentialsPermissionActivity;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lo/GrantCredentialsPermissionActivity;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lo/GrantCredentialsPermissionActivity;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lo/GrantCredentialsPermissionActivity;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lo/GrantCredentialsPermissionActivity;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lo/GrantCredentialsPermissionActivity;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lo/GrantCredentialsPermissionActivity;->i:Lo/ActivityView;

    iget-object v2, v2, Lo/ActivityView;->h:Landroid/graphics/PointF;

    iget-object v3, p0, Lo/GrantCredentialsPermissionActivity;->i:Lo/ActivityView;

    iget-object v3, v3, Lo/ActivityView;->g:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lo/ActivityManagerNative;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lo/GrantCredentialsPermissionActivity;->j:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method c()Landroid/graphics/Path;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/GrantCredentialsPermissionActivity;->j:Landroid/graphics/Path;

    return-object v0
.end method
