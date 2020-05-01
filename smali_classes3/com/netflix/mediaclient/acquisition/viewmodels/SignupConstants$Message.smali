.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final CTA:Ljava/lang/String; = "cta"

.field public static final CTA_BUTTON:Ljava/lang/String; = "ctaButton"

.field public static final CTA_BUTTON_LABEL:Ljava/lang/String; = "ctaButtonLabel"

.field public static final CTA_BUTTON_SUBHEAD:Ljava/lang/String; = "ctaButtonSubhead"

.field public static final HEADLINE:Ljava/lang/String; = "headline"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;

.field public static final NEXT:Ljava/lang/String; = "next"

.field public static final REG_CONTEXT_TYPE:Ljava/lang/String; = "registrationContextCopy"

.field public static final REG_SUBTITLE:Ljava/lang/String; = "registrationFormSubtitle"

.field public static final REG_TITLE:Ljava/lang/String; = "registrationFormTitle"

.field public static final STRING:Ljava/lang/String; = "string"

.field public static final SUB_HEADLINE:Ljava/lang/String; = "subHeadline"

.field public static final TEXT_DISCLAIMER:Ljava/lang/String; = "textDisclaimer"

.field public static final VALUE_PROP_MESSAGE:Ljava/lang/String; = "valuePropMessage"

.field public static final VALUE_PROP_MESSAGE_SECONDARY:Ljava/lang/String; = "valuePropMessageSecondary"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 541
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
