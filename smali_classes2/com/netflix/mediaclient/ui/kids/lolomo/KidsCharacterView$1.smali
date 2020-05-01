.class public final Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lo/ByteArrayInputStream<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v0, Lo/ByteArrayInputStream;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->M:I

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ByteArrayInputStream;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lo/ByteArrayInputStream;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->H:I

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ByteArrayInputStream;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lo/ByteArrayInputStream;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->E:I

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ByteArrayInputStream;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Lo/ByteArrayInputStream;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->C:I

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ByteArrayInputStream;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lo/ByteArrayInputStream;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->G:I

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ByteArrayInputStream;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
