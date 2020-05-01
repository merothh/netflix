.class public final Lo/BaseInputConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lo/TranslateXAnimation;


# direct methods
.method public constructor <init>(Lo/TranslateXAnimation;)V
    .locals 1

    const-string v0, "floatingCtaHeightChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BaseInputConnection;->c:Lo/TranslateXAnimation;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lo/BaseInputConnection;->c:Lo/TranslateXAnimation;

    invoke-interface {v0, p1}, Lo/TranslateXAnimation;->b(I)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/BaseInputConnection;->a(I)V

    return-void
.end method
