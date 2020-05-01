.class public final Lo/AccessibilityCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/AccessibilityWindowInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/AccessibilityCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/AccessibilityCache;

    invoke-direct {v0}, Lo/AccessibilityCache;-><init>()V

    sput-object v0, Lo/AccessibilityCache;->c:Lo/AccessibilityCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/AccessibilityCache;
    .locals 1

    .line 19
    sget-object v0, Lo/AccessibilityCache;->c:Lo/AccessibilityCache;

    return-object v0
.end method


# virtual methods
.method public a()Lo/AccessibilityWindowInfo;
    .locals 1

    .line 15
    new-instance v0, Lo/AccessibilityWindowInfo;

    invoke-direct {v0}, Lo/AccessibilityWindowInfo;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/AccessibilityCache;->a()Lo/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method
