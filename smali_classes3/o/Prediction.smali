.class public Lo/Prediction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/XmlBlock;


# instance fields
.field private final a:Lo/GestureStroke;

.field private final d:Lo/MarshalQueryableNativeByteToInteger;


# direct methods
.method public constructor <init>(Lo/MarshalQueryableStreamConfiguration;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lo/MarshalQueryableStreamConfiguration;->d()Lo/MarshalQueryableNativeByteToInteger;

    move-result-object v0

    iput-object v0, p0, Lo/Prediction;->d:Lo/MarshalQueryableNativeByteToInteger;

    .line 32
    new-instance v0, Lo/GestureStroke;

    invoke-virtual {p1}, Lo/MarshalQueryableStreamConfiguration;->j()Lo/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/GestureStroke;-><init>(Lo/AssetFileDescriptor;)V

    iput-object v0, p0, Lo/Prediction;->a:Lo/GestureStroke;

    return-void
.end method
