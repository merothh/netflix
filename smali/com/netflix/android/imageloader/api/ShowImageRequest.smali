.class public final Lcom/netflix/android/imageloader/api/ShowImageRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;,
        Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;,
        Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;,
        Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:Ljava/lang/String;

.field private d:Lo/Serializable;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Integer;

.field private i:Z

.field private j:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->a:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    iput-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->n:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;
    .locals 11

    .line 138
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d:Lo/Serializable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lifecycle owner required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 142
    :cond_1
    :goto_0
    new-instance v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    .line 143
    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c:Ljava/lang/String;

    .line 144
    iget-boolean v3, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e:Z

    .line 145
    iget-object v4, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a:Ljava/lang/Integer;

    .line 146
    iget-boolean v5, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->f:Z

    .line 147
    iget-object v6, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->h:Ljava/lang/Integer;

    .line 148
    iget-boolean v7, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->i:Z

    .line 149
    iget-boolean v8, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->g:Z

    .line 150
    iget-object v9, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->n:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 151
    iget-boolean v10, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->o:Z

    move-object v1, v0

    .line 142
    invoke-direct/range {v1 .. v10}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;-><init>(Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/Integer;ZZLcom/netflix/android/imageloader/api/ShowImageRequest$Priority;Z)V

    .line 153
    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    .line 154
    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d:Lo/Serializable;

    .line 155
    iget-object v3, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b:Landroidx/fragment/app/Fragment;

    .line 156
    iget-object v4, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->j:Lio/reactivex/SingleObserver;

    .line 153
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;-><init>(Lo/Serializable;Landroidx/fragment/app/Fragment;Lio/reactivex/SingleObserver;Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;)V

    return-object v1
.end method

.method public final a(Lo/Serializable;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d:Lo/Serializable;

    return-object p0
.end method

.method public final a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e:Z

    return-object p0
.end method

.method public final b(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->f:Z

    return-object p0
.end method

.method public final b()Lo/Serializable;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d:Lo/Serializable;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->g:Z

    return-object p0
.end method

.method public final d()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public final d(Ljava/lang/Integer;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public final d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    sget-object p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->a:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    :goto_0
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->n:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-object p0
.end method

.method public final e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 1

    const-string v0, "priority"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->n:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-object p0
.end method

.method public final e(Lio/reactivex/SingleObserver;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;)",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest;"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->j:Lio/reactivex/SingleObserver;

    return-object p0
.end method

.method public final e(Ljava/lang/Integer;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final e(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->i:Z

    return-object p0
.end method

.method public final h(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest;->o:Z

    return-object p0
.end method
