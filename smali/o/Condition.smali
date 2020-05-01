.class public abstract Lo/Condition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 12
    new-instance v0, Lo/Validators;

    invoke-direct {v0}, Lo/Validators;-><init>()V

    return-object v0
.end method
