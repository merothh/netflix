.class public Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CalendarAstronomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoonAge"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;->value:D

    return-void
.end method
