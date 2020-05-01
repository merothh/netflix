.class public Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/core/LinphoneAccountCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestStatus"
.end annotation


# static fields
.field public static final AccountActivated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountAlreadyActivated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountCreated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountExistWithAlias:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountLinked:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountNotActivated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountNotCreated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountNotExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AccountNotLinked:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AliasExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AliasIsAccount:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final AliasNotExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final ErrorServer:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final Failed:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final MissingArguments:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final MissingCallbacks:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field public static final Ok:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;",
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

    .line 274
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->values:Ljava/util/Vector;

    .line 279
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x0

    const-string v2, "Ok"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->Ok:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 280
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x1

    const-string v2, "Failed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->Failed:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 281
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x2

    const-string v2, "MissingArguments"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->MissingArguments:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 282
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x3

    const-string v2, "MissingCallbacks"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->MissingCallbacks:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 284
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x4

    const-string v2, "AccountCreated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountCreated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 285
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x5

    const-string v2, "AccountNotCreated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountNotCreated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 287
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x6

    const-string v2, "AccountExist"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 288
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/4 v1, 0x7

    const-string v2, "AccountExistWithAlias"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountExistWithAlias:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 289
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0x8

    const-string v2, "AccountNotExist"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountNotExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 290
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0x9

    const-string v2, "AliasIsAccount"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AliasIsAccount:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 291
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0xa

    const-string v2, "AliasExist"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AliasExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 292
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0xb

    const-string v2, "AliasNotExist"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AliasNotExist:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 294
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0xc

    const-string v2, "AccountActivated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountActivated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 295
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0xd

    const-string v2, "AccountAlreadyActivated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountAlreadyActivated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 296
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0xe

    const-string v2, "AccountNotActivated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountNotActivated:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 298
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0xf

    const-string v2, "AccountLinked"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountLinked:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 299
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0x10

    const-string v2, "AccountNotLinked"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->AccountNotLinked:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 301
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    const/16 v1, 0x11

    const-string v2, "ErrorServer"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->ErrorServer:Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p1, p0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->mValue:I

    .line 305
    sget-object p1, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->values:Ljava/util/Vector;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 306
    iput-object p2, p0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
    .locals 3

    const/4 v0, 0x0

    .line 310
    :goto_0
    sget-object v1, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 311
    sget-object v1, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->values:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;

    .line 312
    iget v2, v1, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestStatus not found ["

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
.method public toInt()I
    .locals 1

    .line 322
    iget v0, p0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .line 277
    iget v0, p0, Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;->mValue:I

    return v0
.end method
