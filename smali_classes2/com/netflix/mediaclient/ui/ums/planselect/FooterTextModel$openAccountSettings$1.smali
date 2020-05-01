.class public final Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acl;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/JM$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic e:Lo/Ik;


# direct methods
.method public constructor <init>(Lo/Ik;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;->e:Lo/Ik;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/JM$StateListAnimator;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;->e:Lo/Ik;

    .line 76
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 78
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;->b:Landroid/content/Context;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->rx:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, p1, v2}, Lo/Ik;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;->d(Lo/JM$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
