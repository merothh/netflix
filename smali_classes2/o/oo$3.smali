.class final Lo/oo$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oo;->b()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 155
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {p0, p1, p2}, Lo/oo$3;->e(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)I

    move-result p1

    return p1
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)I
    .locals 0

    .line 158
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->c()I

    move-result p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->c()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
