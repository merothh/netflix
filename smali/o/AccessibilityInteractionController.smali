.class public final Lo/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ProtoOutputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lo/AccessibilityInteractionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/AccessibilityInteractionController;

    invoke-direct {v0}, Lo/AccessibilityInteractionController;-><init>()V

    sput-object v0, Lo/AccessibilityInteractionController;->b:Lo/AccessibilityInteractionController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/AccessibilityInteractionController;
    .locals 1

    .line 19
    sget-object v0, Lo/AccessibilityInteractionController;->b:Lo/AccessibilityInteractionController;

    return-object v0
.end method


# virtual methods
.method public a()Lo/ProtoOutputStream;
    .locals 1

    .line 15
    new-instance v0, Lo/ProtoOutputStream;

    invoke-direct {v0}, Lo/ProtoOutputStream;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/AccessibilityInteractionController;->a()Lo/ProtoOutputStream;

    move-result-object v0

    return-object v0
.end method
