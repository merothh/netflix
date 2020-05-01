.class public abstract Lo/IntentFilterVerificationInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IntentFilterVerificationInfo$Activity;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/IntentFilterVerificationInfo$2;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/IntentFilterVerificationInfo;-><init>()V

    return-void
.end method

.method public static d()Lo/IntentFilterVerificationInfo;
    .locals 1

    .line 20
    new-instance v0, Lo/IntentFilterVerificationInfo$Activity;

    invoke-direct {v0}, Lo/IntentFilterVerificationInfo$Activity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract c()V
.end method

.method abstract c(Z)V
.end method
