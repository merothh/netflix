.class public Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Stack<",
            "Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;",
            ">;)V"
        }
    .end annotation

    .line 88
    const-class v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v0}, Lo/adk;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "RELATED_TITLES_INSTANCE_STATE"

    .line 90
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    array-length v0, p0

    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 96
    aget-object v1, p0, v0

    check-cast v1, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
