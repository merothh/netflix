.class public Lo/afp;
.super Lo/BackupAgentHelper;
.source ""


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lo/BackupAgentHelper;-><init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;)Lo/BackupAgent;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lo/afp;->b(Ljava/lang/Class;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lo/afq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lo/afq<",
            "TResourceType;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lo/afq;

    iget-object v1, p0, Lo/afp;->e:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lo/afp;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lo/afq;-><init>(Lcom/bumptech/glide/Glide;Lo/BackupAgentHelper;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/afq<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lo/BackupAgentHelper;->e(Ljava/lang/String;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method protected b(Lo/SearchRecentSuggestionsProvider;)V
    .locals 1

    .line 174
    instance-of v0, p1, Lo/afn;

    if-eqz v0, :cond_0

    .line 175
    invoke-super {p0, p1}, Lo/BackupAgentHelper;->b(Lo/SearchRecentSuggestionsProvider;)V

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Lo/afn;

    invoke-direct {v0}, Lo/afn;-><init>()V

    invoke-virtual {v0, p1}, Lo/afn;->c(Lo/PeriodicSync;)Lo/afn;

    move-result-object p1

    invoke-super {p0, p1}, Lo/BackupAgentHelper;->b(Lo/SearchRecentSuggestionsProvider;)V

    :goto_0
    return-void
.end method

.method public synthetic e(Ljava/lang/String;)Lo/BackupAgent;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lo/afp;->b(Ljava/lang/String;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f()Lo/BackupAgent;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/afp;->m()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lo/BackupAgent;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/afp;->k()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lo/BackupAgent;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/afp;->o()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public k()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-super {p0}, Lo/BackupAgentHelper;->g()Lo/BackupAgent;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public m()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Lo/BackupAgentHelper;->f()Lo/BackupAgent;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public o()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-super {p0}, Lo/BackupAgentHelper;->h()Lo/BackupAgent;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method
