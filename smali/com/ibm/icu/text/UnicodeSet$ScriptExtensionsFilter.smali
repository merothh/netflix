.class Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptExtensionsFilter"
.end annotation


# instance fields
.field script:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 3217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 3220
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UScript;->hasScript(II)Z

    move-result p1

    return p1
.end method
