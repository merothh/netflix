.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YC$TaskDescription;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Long;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/YC$TaskDescription;


# direct methods
.method public constructor <init>(Lo/YC$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;->a:Lo/YC$TaskDescription;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Long;)V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;->a:Lo/YC$TaskDescription;

    invoke-static {v0}, Lo/YC$TaskDescription;->e(Lo/YC$TaskDescription;)Lo/Lw;

    move-result-object v0

    const-string v1, "progress"

    if-eqz v0, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;->a:Lo/YC$TaskDescription;

    invoke-static {v3}, Lo/YC$TaskDescription;->d(Lo/YC$TaskDescription;)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Lo/Lw;->c(F)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;->a:Lo/YC$TaskDescription;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/YC$TaskDescription;->c(Lo/YC$TaskDescription;J)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;->d(Ljava/lang/Long;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
