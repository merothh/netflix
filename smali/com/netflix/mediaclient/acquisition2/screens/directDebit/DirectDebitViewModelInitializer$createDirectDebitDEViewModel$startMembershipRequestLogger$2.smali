.class public final Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MonthDisplayHelper;->e(Landroidx/fragment/app/Fragment;)Lo/LongSparseLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/cl/model/event/session/command/StartMembershipCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lcom/netflix/cl/model/event/session/command/StartMembershipCommand;
    .locals 1

    .line 173
    new-instance v0, Lcom/netflix/cl/model/event/session/command/StartMembershipCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/StartMembershipCommand;-><init>()V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;->e()Lcom/netflix/cl/model/event/session/command/StartMembershipCommand;

    move-result-object v0

    return-object v0
.end method
