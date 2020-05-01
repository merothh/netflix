.class final Lo/Process;
.super Lo/NoSuchFieldError;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Process$Activity;,
        Lo/Process$Application;,
        Lo/Process$TaskDescription;,
        Lo/Process$StateListAnimator;
    }
.end annotation


# static fields
.field static final b:Z


# instance fields
.field private final a:Landroid/content/ComponentName;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Process$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lo/Process$Application;

.field private e:Z

.field private h:Z

.field private i:Z

.field private j:Lo/Process$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo/Process;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 90
    new-instance v0, Lo/NoSuchFieldError$Activity;

    invoke-direct {v0, p2}, Lo/NoSuchFieldError$Activity;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Lo/NoSuchFieldError;-><init>(Landroid/content/Context;Lo/NoSuchFieldError$Activity;)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Process;->c:Ljava/util/ArrayList;

    .line 92
    iput-object p2, p0, Lo/Process;->a:Landroid/content/ComponentName;

    .line 93
    new-instance p1, Lo/Process$Application;

    invoke-direct {p1}, Lo/Process$Application;-><init>()V

    iput-object p1, p0, Lo/Process;->d:Lo/Process$Application;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;
    .locals 4

    .line 254
    invoke-virtual {p0}, Lo/Process;->f()Lo/NoClassDefFoundError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v0}, Lo/NoClassDefFoundError;->c()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/NoSuchFieldException;

    .line 260
    invoke-virtual {v3}, Lo/NoSuchFieldException;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    new-instance v0, Lo/Process$StateListAnimator;

    invoke-direct {v0, p0, p1, p2}, Lo/Process$StateListAnimator;-><init>(Lo/Process;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-boolean p1, p0, Lo/Process;->i:Z

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    invoke-virtual {v0, p1}, Lo/Process$StateListAnimator;->a(Lo/Process$TaskDescription;)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lo/Process;->m()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private k()V
    .locals 2

    .line 315
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lo/Process;->a(Lo/NoClassDefFoundError;)V

    const/4 v1, 0x0

    .line 317
    iput-boolean v1, p0, Lo/Process;->i:Z

    .line 318
    invoke-direct {p0}, Lo/Process;->q()V

    .line 319
    iget-object v1, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    invoke-virtual {v1}, Lo/Process$TaskDescription;->b()V

    .line 320
    iput-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    const-string v0, ": Bind failed"

    .line 221
    iget-boolean v1, p0, Lo/Process;->h:Z

    if-nez v1, :cond_1

    .line 222
    sget-boolean v1, Lo/Process;->b:Z

    const-string v2, "MediaRouteProviderProxy"

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Binding"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lo/Process;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lo/Process;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lo/Process;->h:Z

    .line 230
    iget-boolean v1, p0, Lo/Process;->h:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lo/Process;->b:Z

    if-eqz v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 234
    sget-boolean v3, Lo/Process;->b:Z

    if-eqz v3, :cond_1

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    .line 197
    invoke-direct {p0}, Lo/Process;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lo/Process;->l()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0}, Lo/Process;->n()V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lo/Process;->h:Z

    if-eqz v0, :cond_1

    .line 243
    sget-boolean v0, Lo/Process;->b:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unbinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lo/Process;->h:Z

    .line 248
    invoke-direct {p0}, Lo/Process;->k()V

    .line 249
    invoke-virtual {p0}, Lo/Process;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method private o()Z
    .locals 2

    .line 205
    iget-boolean v0, p0, Lo/Process;->e:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lo/Process;->d()Lo/NoSuchMethodException;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    iget-object v0, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 3

    .line 338
    iget-object v0, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 340
    iget-object v2, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Process$StateListAnimator;

    invoke-virtual {v2}, Lo/Process$StateListAnimator;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t()V
    .locals 4

    .line 331
    iget-object v0, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    iget-object v2, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Process$StateListAnimator;

    iget-object v3, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    invoke-virtual {v2, v3}, Lo/Process$StateListAnimator;->a(Lo/Process$TaskDescription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/Process;->d(Ljava/lang/String;Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lo/Process;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/Process;->a:Landroid/content/ComponentName;

    .line 164
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lo/NoSuchMethodException;)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lo/Process;->i:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    invoke-virtual {v0, p1}, Lo/Process$TaskDescription;->a(Lo/NoSuchMethodException;)V

    .line 121
    :cond_0
    invoke-direct {p0}, Lo/Process;->m()V

    return-void
.end method

.method c(Lo/Process$StateListAnimator;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lo/Process;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {p1}, Lo/Process$StateListAnimator;->a()V

    .line 327
    invoke-direct {p0}, Lo/Process;->m()V

    return-void
.end method

.method c(Lo/Process$TaskDescription;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    if-ne v0, p1, :cond_1

    .line 288
    sget-boolean p1, Lo/Process;->b:Z

    if-eqz p1, :cond_0

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service connection died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-direct {p0}, Lo/Process;->k()V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lo/Process;->d(Ljava/lang/String;Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d(Lo/Process$TaskDescription;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lo/Process;->i:Z

    .line 277
    invoke-direct {p0}, Lo/Process;->t()V

    .line 279
    invoke-virtual {p0}, Lo/Process;->d()Lo/NoSuchMethodException;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    invoke-virtual {v0, p1}, Lo/Process$TaskDescription;->a(Lo/NoSuchMethodException;)V

    :cond_0
    return-void
.end method

.method e(Lo/Process$TaskDescription;Ljava/lang/String;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    if-ne v0, p1, :cond_1

    .line 297
    sget-boolean p1, Lo/Process;->b:Z

    if-eqz p1, :cond_0

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service connection error - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouteProviderProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-direct {p0}, Lo/Process;->n()V

    :cond_1
    return-void
.end method

.method e(Lo/Process$TaskDescription;Lo/NoClassDefFoundError;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    if-ne v0, p1, :cond_1

    .line 307
    sget-boolean p1, Lo/Process;->b:Z

    if-eqz p1, :cond_0

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Descriptor changed, descriptor="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-virtual {p0, p2}, Lo/Process;->a(Lo/NoClassDefFoundError;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 190
    iget-object v0, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/Process;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lo/Process;->n()V

    .line 192
    invoke-direct {p0}, Lo/Process;->l()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lo/Process;->e:Z

    if-eqz v0, :cond_1

    .line 180
    sget-boolean v0, Lo/Process;->b:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lo/Process;->e:Z

    .line 185
    invoke-direct {p0}, Lo/Process;->m()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    .line 168
    iget-boolean v0, p0, Lo/Process;->e:Z

    if-nez v0, :cond_1

    .line 169
    sget-boolean v0, Lo/Process;->b:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lo/Process;->e:Z

    .line 174
    invoke-direct {p0}, Lo/Process;->m()V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 126
    sget-boolean p1, Lo/Process;->b:Z

    const-string v0, "MediaRouteProviderProxy"

    if-eqz p1, :cond_0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Connected"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-boolean p1, p0, Lo/Process;->h:Z

    if-eqz p1, :cond_4

    .line 131
    invoke-direct {p0}, Lo/Process;->k()V

    if-eqz p2, :cond_1

    .line 133
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-static {p1}, Lo/NullPointerException;->e(Landroid/os/Messenger;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    new-instance p2, Lo/Process$TaskDescription;

    invoke-direct {p2, p0, p1}, Lo/Process$TaskDescription;-><init>(Lo/Process;Landroid/os/Messenger;)V

    .line 136
    invoke-virtual {p2}, Lo/Process$TaskDescription;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    iput-object p2, p0, Lo/Process;->j:Lo/Process$TaskDescription;

    goto :goto_1

    .line 139
    :cond_2
    sget-boolean p1, Lo/Process;->b:Z

    if-eqz p1, :cond_4

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Registration failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Service returned invalid messenger binder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 151
    sget-boolean p1, Lo/Process;->b:Z

    if-eqz p1, :cond_0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-direct {p0}, Lo/Process;->k()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Process;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
