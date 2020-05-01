.class public final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Base64;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/ByteStringUtils;Lo/Base64OutputStream;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/FragmentHostCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lo/FragmentHostCallback;
    .locals 2

    .line 239
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "Secure MOP Fetch Key"

    invoke-static {v0, v1}, Lo/NativeActivity;->e(Landroid/content/Context;Ljava/lang/String;)Lo/FragmentHostCallback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;->e()Lo/FragmentHostCallback;

    move-result-object v0

    return-object v0
.end method
