.class public Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/core/LinphoneCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogCollectionUploadState"
.end annotation


# static fields
.field public static LogCollectionUploadStateDelivered:Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

.field public static LogCollectionUploadStateInProgress:Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

.field public static LogCollectionUploadStateNotDelivered:Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 530
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->values:Ljava/util/Vector;

    .line 534
    new-instance v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    const/4 v1, 0x0

    const-string v2, "LinphoneCoreLogCollectionUploadStateInProgress"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->LogCollectionUploadStateInProgress:Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    .line 538
    new-instance v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    const/4 v1, 0x1

    const-string v2, "LinphoneCoreLogCollectionUploadStateDelivered"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->LogCollectionUploadStateDelivered:Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    .line 542
    new-instance v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    const/4 v1, 0x2

    const-string v2, "LinphoneCoreLogCollectionUploadStateNotDelivered"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->LogCollectionUploadStateNotDelivered:Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput p1, p0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->mValue:I

    .line 549
    sget-object p1, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->values:Ljava/util/Vector;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 550
    iput-object p2, p0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;
    .locals 3

    const/4 v0, 0x0

    .line 554
    :goto_0
    sget-object v1, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 555
    sget-object v1, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->values:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;

    .line 556
    iget v2, v1, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state not found ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
