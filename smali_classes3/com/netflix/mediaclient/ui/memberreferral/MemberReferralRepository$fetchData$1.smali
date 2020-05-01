.class public final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MZ;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/hW;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/MZ;


# direct methods
.method public constructor <init>(Lo/MZ;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;->b:Lo/MZ;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/hW;)V
    .locals 5

    const-string v0, "browseManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;)V

    .line 86
    new-instance v1, Lo/RecoveryCertPath;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lo/RecoveryCertPath;-><init>(ZILo/amc;)V

    check-cast v1, Lo/SettingsValidators;

    check-cast v0, Lo/ci;

    invoke-interface {p1, v1, v0}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;->d(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
