.class public Lo/AsyncTaskLoader;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AsyncTaskLoader$TaskDescription;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lo/AssociationRequest;

.field private b:Lo/AsyncTaskLoader;

.field private c:Lo/BackupAgentHelper;

.field private final d:Lo/ContentProviderNative;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AsyncTaskLoader;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lo/AssociationRequest;

    invoke-direct {v0}, Lo/AssociationRequest;-><init>()V

    invoke-direct {p0, v0}, Lo/AsyncTaskLoader;-><init>(Lo/AssociationRequest;)V

    return-void
.end method

.method constructor <init>(Lo/AssociationRequest;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Lo/AsyncTaskLoader$TaskDescription;

    invoke-direct {v0, p0}, Lo/AsyncTaskLoader$TaskDescription;-><init>(Lo/AsyncTaskLoader;)V

    iput-object v0, p0, Lo/AsyncTaskLoader;->d:Lo/ContentProviderNative;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/AsyncTaskLoader;->e:Ljava/util/Set;

    .line 51
    iput-object p1, p0, Lo/AsyncTaskLoader;->a:Lo/AssociationRequest;

    return-void
.end method

.method private a()V
    .locals 1

    .line 172
    iget-object v0, p0, Lo/AsyncTaskLoader;->b:Lo/AsyncTaskLoader;

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {v0, p0}, Lo/AsyncTaskLoader;->d(Lo/AsyncTaskLoader;)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lo/AsyncTaskLoader;->b:Lo/AsyncTaskLoader;

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lo/AsyncTaskLoader;->a()V

    .line 165
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->h()Lo/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ContentProviderOperation;->e(Landroid/app/Activity;)Lo/AsyncTaskLoader;

    move-result-object p1

    iput-object p1, p0, Lo/AsyncTaskLoader;->b:Lo/AsyncTaskLoader;

    .line 166
    iget-object p1, p0, Lo/AsyncTaskLoader;->b:Lo/AsyncTaskLoader;

    invoke-virtual {p0, p1}, Lo/AsyncTaskLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lo/AsyncTaskLoader;->b:Lo/AsyncTaskLoader;

    invoke-direct {p1, p0}, Lo/AsyncTaskLoader;->e(Lo/AsyncTaskLoader;)V

    :cond_0
    return-void
.end method

.method private c()Landroid/app/Fragment;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lo/AsyncTaskLoader;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lo/AsyncTaskLoader;->f:Landroid/app/Fragment;

    :goto_1
    return-object v0
.end method

.method private d(Lo/AsyncTaskLoader;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/AsyncTaskLoader;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private e(Lo/AsyncTaskLoader;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/AsyncTaskLoader;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method b()Lo/AssociationRequest;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/AsyncTaskLoader;->a:Lo/AssociationRequest;

    return-object v0
.end method

.method public d()Lo/BackupAgentHelper;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/AsyncTaskLoader;->c:Lo/BackupAgentHelper;

    return-object v0
.end method

.method d(Landroid/app/Fragment;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lo/AsyncTaskLoader;->f:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/AsyncTaskLoader;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public d(Lo/BackupAgentHelper;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/AsyncTaskLoader;->c:Lo/BackupAgentHelper;

    return-void
.end method

.method public e()Lo/ContentProviderNative;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/AsyncTaskLoader;->d:Lo/ContentProviderNative;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lo/AsyncTaskLoader;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 187
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 213
    iget-object v0, p0, Lo/AsyncTaskLoader;->a:Lo/AssociationRequest;

    invoke-virtual {v0}, Lo/AssociationRequest;->a()V

    .line 214
    invoke-direct {p0}, Lo/AsyncTaskLoader;->a()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 195
    invoke-direct {p0}, Lo/AsyncTaskLoader;->a()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 201
    iget-object v0, p0, Lo/AsyncTaskLoader;->a:Lo/AssociationRequest;

    invoke-virtual {v0}, Lo/AssociationRequest;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 207
    iget-object v0, p0, Lo/AsyncTaskLoader;->a:Lo/AssociationRequest;

    invoke-virtual {v0}, Lo/AssociationRequest;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/AsyncTaskLoader;->c()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
