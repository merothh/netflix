.class public final Lo/ZoomButton;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/TimePickerClockDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lo/TimePickerClockDelegate;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/ZoomButton;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static e(Ljavax/inject/Provider;)Lo/ZoomButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lo/TimePickerClockDelegate;",
            ">;)",
            "Lo/ZoomButton;"
        }
    .end annotation

    .line 25
    new-instance v0, Lo/ZoomButton;

    invoke-direct {v0, p0}, Lo/ZoomButton;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public c()Lo/a;
    .locals 2

    .line 21
    new-instance v0, Lo/a;

    iget-object v1, p0, Lo/ZoomButton;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TimePickerClockDelegate;

    invoke-direct {v0, v1}, Lo/a;-><init>(Lo/TimePickerClockDelegate;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/ZoomButton;->c()Lo/a;

    move-result-object v0

    return-object v0
.end method
