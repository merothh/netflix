.class public Lcom/netflix/mediaclient/ui/lolomo/GenreFragmentCreator$1;
.super Ljava/util/LinkedHashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/content/Intent;",
        "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Kg;


# direct methods
.method public constructor <init>(Lo/Kg;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GenreFragmentCreator$1;->a:Lo/Kg;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GenreFragmentCreator$1;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
