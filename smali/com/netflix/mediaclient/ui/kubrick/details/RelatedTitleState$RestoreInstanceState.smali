.class public Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState$RestoreInstanceState;
.super Ljava/lang/Object;
.source "RelatedTitleState.java"


# static fields
.field public static final RELATED_TITLES_INSTANCE_STATE:Ljava/lang/String; = "RELATED_TITLES_INSTANCE_STATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Landroid/os/Bundle;Ljava/util/Stack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;",
            ">;)V"
        }
    .end annotation

    const-class v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v0, "RELATED_TITLES_INSTANCE_STATE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
