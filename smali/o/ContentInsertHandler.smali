.class public Lo/ContentInsertHandler;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ContentInsertHandler$Activity;
    }
.end annotation


# instance fields
.field private a:Lo/BackupAgentHelper;

.field private final b:Lo/AssociationRequest;

.field private c:Lo/ContentInsertHandler;

.field private final d:Lo/ContentProviderNative;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ContentInsertHandler;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    new-instance v0, Lo/AssociationRequest;

    invoke-direct {v0}, Lo/AssociationRequest;-><init>()V

    invoke-direct {p0, v0}, Lo/ContentInsertHandler;-><init>(Lo/AssociationRequest;)V

    return-void
.end method

.method public constructor <init>(Lo/AssociationRequest;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Lo/ContentInsertHandler$Activity;

    invoke-direct {v0, p0}, Lo/ContentInsertHandler$Activity;-><init>(Lo/ContentInsertHandler;)V

    iput-object v0, p0, Lo/ContentInsertHandler;->d:Lo/ContentProviderNative;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ContentInsertHandler;->e:Ljava/util/Set;

    .line 45
    iput-object p1, p0, Lo/ContentInsertHandler;->b:Lo/AssociationRequest;

    return-void
.end method

.method private a(Lo/Serializable;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lo/ContentInsertHandler;->c()V

    .line 146
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->h()Lo/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ContentProviderOperation;->d(Lo/Serializable;)Lo/ContentInsertHandler;

    move-result-object p1

    iput-object p1, p0, Lo/ContentInsertHandler;->c:Lo/ContentInsertHandler;

    .line 147
    iget-object p1, p0, Lo/ContentInsertHandler;->c:Lo/ContentInsertHandler;

    invoke-virtual {p0, p1}, Lo/ContentInsertHandler;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lo/ContentInsertHandler;->c:Lo/ContentInsertHandler;

    invoke-direct {p1, p0}, Lo/ContentInsertHandler;->b(Lo/ContentInsertHandler;)V

    :cond_0
    return-void
.end method

.method private b()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lo/ContentInsertHandler;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lo/ContentInsertHandler;->h:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method private b(Lo/ContentInsertHandler;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ContentInsertHandler;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/ContentInsertHandler;->c:Lo/ContentInsertHandler;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {v0, p0}, Lo/ContentInsertHandler;->d(Lo/ContentInsertHandler;)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lo/ContentInsertHandler;->c:Lo/ContentInsertHandler;

    :cond_0
    return-void
.end method

.method private d(Lo/ContentInsertHandler;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ContentInsertHandler;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lo/ContentProviderNative;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/ContentInsertHandler;->d:Lo/ContentProviderNative;

    return-object v0
.end method

.method a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 116
    iput-object p1, p0, Lo/ContentInsertHandler;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/ContentInsertHandler;->a(Lo/Serializable;)V

    :cond_0
    return-void
.end method

.method public c(Lo/BackupAgentHelper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/ContentInsertHandler;->a:Lo/BackupAgentHelper;

    return-void
.end method

.method d()Lo/AssociationRequest;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ContentInsertHandler;->b:Lo/AssociationRequest;

    return-object v0
.end method

.method public e()Lo/BackupAgentHelper;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/ContentInsertHandler;->a:Lo/BackupAgentHelper;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lo/ContentInsertHandler;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/ContentInsertHandler;->a(Lo/Serializable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 167
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lo/ContentInsertHandler;->b:Lo/AssociationRequest;

    invoke-virtual {v0}, Lo/AssociationRequest;->a()V

    .line 195
    invoke-direct {p0}, Lo/ContentInsertHandler;->c()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 174
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lo/ContentInsertHandler;->h:Landroidx/fragment/app/Fragment;

    .line 176
    invoke-direct {p0}, Lo/ContentInsertHandler;->c()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 182
    iget-object v0, p0, Lo/ContentInsertHandler;->b:Lo/AssociationRequest;

    invoke-virtual {v0}, Lo/AssociationRequest;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 188
    iget-object v0, p0, Lo/ContentInsertHandler;->b:Lo/AssociationRequest;

    invoke-virtual {v0}, Lo/AssociationRequest;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/ContentInsertHandler;->b()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
