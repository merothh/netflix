.class public final Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/anx$TaskDescription;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Integer;",
        "Lo/anu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/anx$TaskDescription;


# direct methods
.method public constructor <init>(Lo/anx$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->c:Lo/anx$TaskDescription;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(I)Lo/anu;
    .locals 1

    .line 278
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->c:Lo/anx$TaskDescription;

    invoke-virtual {v0, p1}, Lo/anx$TaskDescription;->e(I)Lo/anu;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->c(I)Lo/anu;

    move-result-object p1

    return-object p1
.end method
