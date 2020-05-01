.class public Lorg/linphone/core/CallDirection;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static Incoming:Lorg/linphone/core/CallDirection;

.field public static Outgoing:Lorg/linphone/core/CallDirection;


# instance fields
.field private mStringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lorg/linphone/core/CallDirection;

    const-string v1, "CallOutgoing"

    invoke-direct {v0, v1}, Lorg/linphone/core/CallDirection;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/linphone/core/CallDirection;->Outgoing:Lorg/linphone/core/CallDirection;

    .line 32
    new-instance v0, Lorg/linphone/core/CallDirection;

    const-string v1, "Callincoming"

    invoke-direct {v0, v1}, Lorg/linphone/core/CallDirection;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/linphone/core/CallDirection;->Incoming:Lorg/linphone/core/CallDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/linphone/core/CallDirection;->mStringValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/linphone/core/CallDirection;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
