.class public final Lo/PreferenceDataStore$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SqliteDiskCacheWriter"

    .line 34
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/PreferenceDataStore$Activity;-><init>()V

    return-void
.end method
