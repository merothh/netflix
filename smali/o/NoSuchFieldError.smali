.class public abstract Lo/NoSuchFieldError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NoSuchFieldError$Application;,
        Lo/NoSuchFieldError$StateListAnimator;,
        Lo/NoSuchFieldError$ActionBar;,
        Lo/NoSuchFieldError$Activity;
    }
.end annotation


# instance fields
.field private final a:Lo/NoSuchFieldError$Application;

.field private b:Lo/NoSuchFieldError$StateListAnimator;

.field private c:Lo/NoSuchMethodException;

.field private final d:Lo/NoSuchFieldError$Activity;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Z

.field private i:Lo/NoClassDefFoundError;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/NoSuchFieldError$Activity;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lo/NoSuchFieldError$Application;

    invoke-direct {v0, p0}, Lo/NoSuchFieldError$Application;-><init>(Lo/NoSuchFieldError;)V

    iput-object v0, p0, Lo/NoSuchFieldError;->a:Lo/NoSuchFieldError$Application;

    if-eqz p1, :cond_1

    .line 92
    iput-object p1, p0, Lo/NoSuchFieldError;->e:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 94
    new-instance p2, Lo/NoSuchFieldError$Activity;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, v0}, Lo/NoSuchFieldError$Activity;-><init>(Landroid/content/ComponentName;)V

    iput-object p2, p0, Lo/NoSuchFieldError;->d:Lo/NoSuchFieldError$Activity;

    goto :goto_0

    .line 96
    :cond_0
    iput-object p2, p0, Lo/NoSuchFieldError;->d:Lo/NoSuchFieldError$Activity;

    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lo/NoSuchFieldError;->d(Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lo/NoSuchFieldError$Activity;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/NoSuchFieldError;->d:Lo/NoSuchFieldError$Activity;

    return-object v0
.end method

.method public final a(Lo/NoClassDefFoundError;)V
    .locals 1

    .line 226
    invoke-static {}, Lo/Object;->b()V

    .line 228
    iget-object v0, p0, Lo/NoSuchFieldError;->i:Lo/NoClassDefFoundError;

    if-eq v0, p1, :cond_0

    .line 229
    iput-object p1, p0, Lo/NoSuchFieldError;->i:Lo/NoClassDefFoundError;

    .line 230
    iget-boolean p1, p0, Lo/NoSuchFieldError;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lo/NoSuchFieldError;->g:Z

    .line 232
    iget-object v0, p0, Lo/NoSuchFieldError;->a:Lo/NoSuchFieldError$Application;

    invoke-virtual {v0, p1}, Lo/NoSuchFieldError$Application;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/NoSuchFieldError;->a:Lo/NoSuchFieldError$Application;

    return-object v0
.end method

.method public final b(Lo/NoSuchFieldError$StateListAnimator;)V
    .locals 0

    .line 127
    invoke-static {}, Lo/Object;->b()V

    .line 128
    iput-object p1, p0, Lo/NoSuchFieldError;->b:Lo/NoSuchFieldError$StateListAnimator;

    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/NoSuchFieldError;->e:Landroid/content/Context;

    return-object v0
.end method

.method public c(Lo/NoSuchMethodException;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lo/NoSuchMethodException;
    .locals 1

    .line 141
    iget-object v0, p0, Lo/NoSuchFieldError;->c:Lo/NoSuchMethodException;

    return-object v0
.end method

.method public final d(Lo/NoSuchMethodException;)V
    .locals 1

    .line 153
    invoke-static {}, Lo/Object;->b()V

    .line 155
    iget-object v0, p0, Lo/NoSuchFieldError;->c:Lo/NoSuchMethodException;

    invoke-static {v0, p1}, Lo/BufferedReader;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iput-object p1, p0, Lo/NoSuchFieldError;->c:Lo/NoSuchMethodException;

    .line 160
    iget-boolean p1, p0, Lo/NoSuchFieldError;->f:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lo/NoSuchFieldError;->f:Z

    .line 162
    iget-object p1, p0, Lo/NoSuchFieldError;->a:Lo/NoSuchFieldError$Application;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lo/NoSuchFieldError$Application;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lo/NoSuchFieldError;->f:Z

    .line 168
    iget-object v0, p0, Lo/NoSuchFieldError;->c:Lo/NoSuchMethodException;

    invoke-virtual {p0, v0}, Lo/NoSuchFieldError;->c(Lo/NoSuchMethodException;)V

    return-void
.end method

.method public final f()Lo/NoClassDefFoundError;
    .locals 1

    .line 211
    iget-object v0, p0, Lo/NoSuchFieldError;->i:Lo/NoClassDefFoundError;

    return-object v0
.end method

.method h()V
    .locals 2

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lo/NoSuchFieldError;->g:Z

    .line 240
    iget-object v0, p0, Lo/NoSuchFieldError;->b:Lo/NoSuchFieldError$StateListAnimator;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lo/NoSuchFieldError;->i:Lo/NoClassDefFoundError;

    invoke-virtual {v0, p0, v1}, Lo/NoSuchFieldError$StateListAnimator;->a(Lo/NoSuchFieldError;Lo/NoClassDefFoundError;)V

    :cond_0
    return-void
.end method
