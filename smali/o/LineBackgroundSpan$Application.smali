.class final Lo/LineBackgroundSpan$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LineBackgroundSpan;->b(Lo/LeadingMarginSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/LeadingMarginSpan;


# direct methods
.method constructor <init>(Lo/LeadingMarginSpan;)V
    .locals 0

    iput-object p1, p0, Lo/LineBackgroundSpan$Application;->e:Lo/LeadingMarginSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lo/LineBackgroundSpan$Application;->e:Lo/LeadingMarginSpan;

    const-string v1, "isChecked"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/LeadingMarginSpan;->b(Z)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/LineBackgroundSpan$Application;->a(Ljava/lang/Boolean;)V

    return-void
.end method
