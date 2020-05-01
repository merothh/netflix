.class public final Lo/PreferenceInflater;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lo/PreferenceInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lo/PreferenceInflater;

    invoke-direct {v0}, Lo/PreferenceInflater;-><init>()V

    sput-object v0, Lo/PreferenceInflater;->c:Lo/PreferenceInflater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e(Z)Lo/PreferenceFrameLayout;
    .locals 1

    .line 90
    new-instance v0, Lo/PreferenceFragment;

    invoke-direct {v0, p0}, Lo/PreferenceFragment;-><init>(Z)V

    check-cast v0, Lo/PreferenceFrameLayout;

    return-object v0
.end method

.method public static synthetic e(ZILjava/lang/Object;)Lo/PreferenceFrameLayout;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 88
    :cond_0
    invoke-static {p0}, Lo/PreferenceInflater;->e(Z)Lo/PreferenceFrameLayout;

    move-result-object p0

    return-object p0
.end method
