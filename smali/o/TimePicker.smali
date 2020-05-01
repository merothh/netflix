.class public final Lo/TimePicker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ThemedSpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/TimePicker;

    invoke-direct {v0}, Lo/TimePicker;-><init>()V

    sput-object v0, Lo/TimePicker;->a:Lo/TimePicker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/TimePicker;
    .locals 1

    .line 19
    sget-object v0, Lo/TimePicker;->a:Lo/TimePicker;

    return-object v0
.end method


# virtual methods
.method public e()Lo/ThemedSpinnerAdapter;
    .locals 1

    .line 15
    new-instance v0, Lo/ThemedSpinnerAdapter;

    invoke-direct {v0}, Lo/ThemedSpinnerAdapter;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/TimePicker;->e()Lo/ThemedSpinnerAdapter;

    move-result-object v0

    return-object v0
.end method
