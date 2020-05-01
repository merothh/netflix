.class public final Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/ShowImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lo/Serializable;

.field private final d:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;


# direct methods
.method public constructor <init>(Lo/Serializable;Landroidx/fragment/app/Fragment;Lio/reactivex/SingleObserver;Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Landroidx/fragment/app/Fragment;",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;",
            ")V"
        }
    .end annotation

    const-string v0, "details"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b:Lo/Serializable;

    iput-object p2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d:Lio/reactivex/SingleObserver;

    iput-object p4, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    return-object v0
.end method

.method public final c()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->a:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final d()Lio/reactivex/SingleObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d:Lio/reactivex/SingleObserver;

    return-object v0
.end method

.method public final e()Lo/Serializable;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b:Lo/Serializable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b:Lo/Serializable;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b:Lo/Serializable;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->a:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d:Lio/reactivex/SingleObserver;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d:Lio/reactivex/SingleObserver;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    iget-object p1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b:Lo/Serializable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->a:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d:Lio/reactivex/SingleObserver;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b:Lo/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d:Lio/reactivex/SingleObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e:Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
