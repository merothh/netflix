.class public final Lo/LT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LT$Activity;
    }
.end annotation


# instance fields
.field private final a:Lo/LT$Activity;

.field private final b:Z

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method private b()I
    .locals 2

    .line 165
    iget-object v0, p0, Lo/LT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-boolean v1, p0, Lo/LT;->b:Z

    invoke-static {v0, v1}, Lo/Mn;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    return v0
.end method

.method private d(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lo/LT;->c:Landroid/os/Handler;

    new-instance v1, Lo/LT$1;

    invoke-direct {v1, p0, p1}, Lo/LT$1;-><init>(Lo/LT;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method c()V
    .locals 2

    .line 132
    iget-object v0, p0, Lo/LT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAddCastToMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CastMenu"

    const-string v1, "Service manager or mdx are null"

    .line 133
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lo/LT;->a:Lo/LT$Activity;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/LT$Activity;->d(Z)V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lo/LT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Lo/LT;->b()I

    move-result v1

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lo/LT;->a:Lo/LT$Activity;

    invoke-interface {v1, v0}, Lo/LT$Activity;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 141
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v0}, Lo/LT;->d(Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_1
    return-void
.end method

.method c(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CastMenu"

    const-string v2, "Setting cast menu item enabled %b: "

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    iget-object v0, p0, Lo/LT;->a:Lo/LT$Activity;

    invoke-interface {v0, p1}, Lo/LT$Activity;->c(Z)V

    return-void
.end method
