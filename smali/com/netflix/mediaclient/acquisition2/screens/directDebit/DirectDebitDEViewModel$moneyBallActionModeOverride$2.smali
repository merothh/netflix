.class public final Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitDEViewModel$moneyBallActionModeOverride$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LongSparseLongArray;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MalformedJsonException;Lo/MutableBoolean;Lo/NotificationStats;Lo/LocaleSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/MutableBoolean;


# direct methods
.method public constructor <init>(Lo/MutableBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitDEViewModel$moneyBallActionModeOverride$2;->e:Lo/MutableBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitDEViewModel$moneyBallActionModeOverride$2;->e:Lo/MutableBoolean;

    invoke-virtual {v0}, Lo/MutableBoolean;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "deDebitOptionMode"

    :goto_0
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitDEViewModel$moneyBallActionModeOverride$2;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
