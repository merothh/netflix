.class public interface abstract annotation Lcom/netflix/model/leafs/originals/interactive/Audio$TYPE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TYPE"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final choiceFocus:Ljava/lang/String; = "focus"

.field public static final explicitSelection:Ljava/lang/String; = "explicitSelection"

.field public static final notificationAppear:Ljava/lang/String; = "notificationAppear"

.field public static final timeout:Ljava/lang/String; = "timeout"
