.class public final Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ClipRectAnimation;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/android/moneyball/fields/StringField;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)V
    .locals 1

    const-string v0, "paResField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paResValue"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, p2}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/android/moneyball/fields/StringField;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;->b(Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
