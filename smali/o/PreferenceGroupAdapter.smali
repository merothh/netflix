.class public abstract Lo/PreferenceGroupAdapter;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lo/PreferenceGroupAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lo/PreferenceGroupAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isEmpty()Z
.end method
