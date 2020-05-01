.class public Lo/adr;
.super Landroid/text/style/MetricAffectingSpan;
.source ""


# instance fields
.field private final d:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 12
    iput-object p1, p0, Lo/adr;->d:Landroid/graphics/Typeface;

    return-void
.end method

.method private static b(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lo/adr;->d:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lo/adr;->b(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lo/adr;->d:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lo/adr;->b(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
