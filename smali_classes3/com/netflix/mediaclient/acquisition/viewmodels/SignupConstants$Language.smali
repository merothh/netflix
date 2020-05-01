.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Language"
.end annotation


# static fields
.field public static final ENGLISH_EN:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;

.field public static final SPANISH_ES:Ljava/lang/String; = "es"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 725
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
