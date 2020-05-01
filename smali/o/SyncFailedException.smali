.class public abstract Lo/SyncFailedException;
.super Lo/RSAOtherPrimeInfo;
.source ""


# instance fields
.field private a:Lo/UnsupportedEncodingException;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lo/SerializablePermission;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lo/SerializablePermission;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lo/SyncFailedException;-><init>(Lo/SerializablePermission;I)V

    return-void
.end method

.method public constructor <init>(Lo/SerializablePermission;I)V
    .locals 2

    .line 140
    invoke-direct {p0}, Lo/RSAOtherPrimeInfo;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    .line 107
    iput-object v0, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    .line 141
    iput-object p1, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    .line 142
    iput p2, p0, Lo/SyncFailedException;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 5

    .line 273
    iget-object v0, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    iget-object v1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/fragment/app/Fragment$SavedState;

    .line 276
    iget-object v2, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "states"

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 279
    :goto_1
    iget-object v2, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 280
    iget-object v2, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    iget-object v4, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    invoke-virtual {v4, v0, v3, v2}, Lo/SerializablePermission;->e(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->c()V

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 206
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 208
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    iput-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    .line 213
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 214
    iget-object p1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    .line 217
    invoke-virtual {v1, p3}, Lo/SerializablePermission;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 216
    :goto_1
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    invoke-virtual {p1, p3}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 221
    iget-object p1, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    if-ne p3, p1, :cond_3

    .line 222
    iput-object v0, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 167
    iget-object v0, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 168
    iget-object v0, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    iput-object v0, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    .line 178
    :cond_1
    invoke-virtual {p0, p2}, Lo/SyncFailedException;->e(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 181
    iget-object v1, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 186
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 187
    iget-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 190
    iget v2, p0, Lo/SyncFailedException;->c:I

    if-nez v2, :cond_4

    .line 191
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 194
    :cond_4
    iget-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p2, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Lo/UnsupportedEncodingException;->b(ILandroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 197
    iget p1, p0, Lo/SyncFailedException;->c:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 198
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, p2}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lo/UnsupportedEncodingException;

    :cond_5
    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 229
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 230
    iget-object p1, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 233
    iget p1, p0, Lo/SyncFailedException;->c:I

    if-ne p1, p2, :cond_1

    .line 234
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    iput-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    .line 237
    :cond_0
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    iget-object v0, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lo/UnsupportedEncodingException;

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 242
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 243
    iget p1, p0, Lo/SyncFailedException;->c:I

    if-ne p1, p2, :cond_4

    .line 244
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    if-nez p1, :cond_3

    .line 245
    iget-object p1, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    iput-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    .line 247
    :cond_3
    iget-object p1, p0, Lo/SyncFailedException;->a:Lo/UnsupportedEncodingException;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3, p2}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lo/UnsupportedEncodingException;

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 252
    :goto_1
    iput-object p3, p0, Lo/SyncFailedException;->h:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public d(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 295
    check-cast p1, Landroid/os/Bundle;

    .line 296
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "states"

    .line 297
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 298
    iget-object v0, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 301
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 302
    iget-object v2, p0, Lo/SyncFailedException;->b:Ljava/util/ArrayList;

    aget-object v3, p2, v1

    check-cast v3, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 306
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f"

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 309
    iget-object v3, p0, Lo/SyncFailedException;->d:Lo/SerializablePermission;

    invoke-virtual {v3, p1, v1}, Lo/SerializablePermission;->d(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 311
    :goto_2
    iget-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 312
    iget-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_2
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 315
    iget-object v1, p0, Lo/SyncFailedException;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 317
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad fragment at key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentStatePagerAdapt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public abstract e(I)Landroidx/fragment/app/Fragment;
.end method

.method public e(Landroid/view/ViewGroup;)V
    .locals 2

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 266
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
